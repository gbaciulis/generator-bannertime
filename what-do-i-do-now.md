## What do I do now?

Once the generator is complete and all of the dependencies have been installed, you will be able to start up the development server.

#### Run the development task:

```bash
gulp
```

This will build the source files from the `src/` directory and output them in the `public/` directory.

> Remember to only edit files in the `src/` directory as the files within the `public/` directory are "cleaned" every time gulp runs.

#### Create a new banner:

```bash
yo bannertime:new
```

The generator will then prompt you with a few questions about which kind of banner you'd like to generate. The format will then be generated and automatically added to the preview file.

#### Compile files for production

```bash
gulp prod
```

This task will minify all html, css and javascript files and compress images. It will also zip the production ready files from each directory in the `public/` directory.
