# Free Form Questions about Vesion Control, Xcode, etc.

## Why do we use version control? Under what circumstances would you need version control features and why?

Version control:

1. Adds a Safety Net for rollbacks [Safety]
	- Software can't be fixed like a bad haircut.
	- Version control allows you to undo changes that you've pushed to the branch.
	- Lets you go from one good snapshot to next good snapshot and skip the bad snapshot in-between.
2. Lets you collaborate [Coordination]
	- Pick and choose changes from whomever you want to.
	- They can each use different version of the same feature.
3. Lets you try things out before you commit to them (when developing new things)
	- Exploring in a production environment seems necessary, but:
		- Unsafe
		- Could break the build
		- Upsets coworker for obvious reasons and affect performance reviews.
		- Can be quite [detrimental](https://about.gitlab.com/2017/02/01/gitlab-dot-com-database-incident/) to the company and/or its image, if it doesn't have a backup.
	- But you need to:
		- Share code/progress
		- fix bugs
		- add features
		- get feedback
			- i.e. design critiques
	- Solution: Branching
		- Branching isolates your work from the build.  ![branching example of various shopping lists](branching example shopping list.png) 

## What are the navigator, editor, and inspectors areas in Xcode? What are their roles and how do you use them?

### Navigator

Allows you to go through the contents of a project, whether it's a file, or the items in an application view. 

### Editor

Allows you to write code and add/modify UI objects for your application, as well as make connections between the two.

### Inspectors

Used to modify UI objects' appearance, such as the size of a button and its placeholder text.

## How do you center a view in Interface Builder? How do you stretch one?

You need to align the object with the lines that appear on the view that denote the horizontal and vertical center, as well as use the bar chart button on the bottom to make sure it stays centered. To stretch the object, you need to click and drag the white boxes that appear on the edge of it and then modify the object's shape as needed by stretching or shrinking it by pulling towards/away from that edge.

## What is SpriteKit and why do people use it?

According to Apple's developer documentation:
>The SpriteKit framework makes it easy to create high-performance, battery-efficient 2D games. With support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations, you can add force fields, detect collisions, and generate new lighting effects in your games.

This makes it easier to create responsive objects within a game. 