# dotfiles
mac and linux setups 

# Apps

## Development

- [x]  DBeaver
- [x]  MongoDB Compass
- [x]  RedisInsight
- [x]  Postman
- [x]  Apache Jmeter
- [x]  Draw.io
- [x]  Devtoolbox - https://github.com/aleiepure/devtoolbox

## IDE’s

- [x]  IntelliJ Idea Community
- [x]  Visual Studio Code

## Notes

- [x]  Sublime Text

## Entertainment

- [x]  Jdownloader
- [x]  FreeTube
- [ ]  Youtubedl-gui

## Productivity

- [x]  Minder - https://github.com/phase1geo/Minder
- [x]  Flowtime - https://github.com/Diego-Ivan/Flowtime
- [ ]  

## OS Tuning

- [x]  Flatseal - To control what permission a flatpak should use
- [x]  Kompare
- [x]  Gaphor - The simple modeling tool for UML and SysML.
- [x]  Scratch
- [x]  KeepassXC
- [ ]  Raspberry PI Imager
- [x]  Timeshift (backup) - https://github.com/linuxmint/timeshift
- [ ]  Butter (btrs backup) - https://github.com/zhangyuannie/butter
- [ ]  Polo (File Manger) - https://github.com/teejee2008/polo

## Customization

- [ ]  

## ZSH

### Install zsh:

sudo apt install zsh -y

Switch to Zsh shell

chsh -s $(which zsh)

sudo chsh -s /usr/bin/zsh $USER

echo $SHELL

### Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Powerlevel10k

```bash
git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Set `ZSH_THEME="powerlevel10k/powerlevel10k"`
 in `~/.zshrc`

# command line tools

### OS Tuning

- [x]  homebrew
    
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
    
- [x]  docker & docker-compose
    
    ```bash
    sudo apt install docker docker-compose -y
    ```
    
- [x]  autojump
    
    ```bash
    brew install autojump
    ```
    
- [x]  bat
    - [ ]  [https://github.com/sharkdp/bat/releases/tag/v0.23.0](https://github.com/sharkdp/bat/releases/tag/v0.23.0)
    
    ```bash
    brew install bat
    ```
    
- [x]  fd
    - [ ]  [https://github.com/sharkdp/fd/releases/tag/v8.7.0](https://github.com/sharkdp/fd/releases/tag/v8.7.0)
    
    ```bash
    brew install fd
    ```
    
- [x]  curl
- [x]  ansible
    
    ```bash
    sudo apt install ansible -y
    ```
    
- [ ]  albert

### Development

```bash
brew install tfenv pyenv kubectx kind lazydocker k9s go helm jq kustomize nmap openjdk redis awscli htop nvm zsh-completions watch p7zip neovim make vagrant-completion trash neofetch kubectl
```

- [ ]  tfenv
- [ ]  pyenv
- [ ]  kind
- [ ]  lazydocker - https://github.com/jesseduffield/lazydocker
- [ ]  kubectx
- [ ]  kubens
- [ ]  k9s
- [ ]  kubectl

### APT Packges

- [x]  vagrant
- [x]  git
- [ ]  dockly - https://github.com/lirantal/dockly

### Cloud Packages

### GCP

**Installation**

1. Add the gcloud CLI distribution URI as a package source. If your distribution supports the signed-by option, run the following command:

```
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
```

If your distribution doesn't support the signed-by option, run the following command:

- `echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list`
    
    **Note:** Make sure you don't have duplicate entries for the
          `cloud-sdk` repo in `/etc/apt/sources.list.d/google-cloud-sdk.list`.
    
- Import the Google Cloud public key. If your distribution's `apt-key` command supports the `-keyring` argument, run the following command:

```
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
```

If your distribution's apt-key command doesn't support the `--keyring` argument, run the
      following command:

```
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
```

If your distribution (Debian 11+ or Ubuntu 21.10+) doesn't support `apt-key`, run the
      following command:

- `curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg`
    
    If you can't get latest updates due to an expired key,
          [obtain the latest
            apt-get.gpg key file](https://cloud.google.com/compute/docs/troubleshooting/known-issues#keyexpired).
    
- Update and install the gcloud CLI:

```
sudo apt-get update && sudo apt-get install google-cloud-cli
```

For additional

```
apt-get
```

options, such as disabling prompts or dry runs,
    refer to the

`[apt-get` man pages](https://linux.die.net/man/8/apt-get)

.

**Docker Tip:** If installing the gcloud CLI inside a Docker image, use a
    single RUN step instead:

```
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-cli -y

```

If

```
apt-key
```

command is not supported:

- `RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | tee /usr/share/keyrings/cloud.google.gpg && apt-get update -y && apt-get install google-cloud-sdk -y`
- (Optional) Install any of the following  [additional components](https://cloud.google.com/sdk/docs/components#additional_components):
    - `google-cloud-cli`
    - `google-cloud-cli-anthos-auth`
    - `google-cloud-cli-app-engine-go`
    - `google-cloud-cli-app-engine-grpc`
    - `google-cloud-cli-app-engine-java`
    - `google-cloud-cli-app-engine-python`
    - `google-cloud-cli-app-engine-python-extras`
    - `google-cloud-cli-bigtable-emulator`
    - `google-cloud-cli-cbt`
    - `google-cloud-cli-cloud-build-local`
    - `google-cloud-cli-cloud-run-proxy`
    - `google-cloud-cli-config-connector`
    - `google-cloud-cli-datastore-emulator`
    - `google-cloud-cli-firestore-emulator`
    - `google-cloud-cli-gke-gcloud-auth-plugin`
    - `google-cloud-cli-kpt`
    - `google-cloud-cli-kubectl-oidc`
    - `google-cloud-cli-local-extract`
    - `google-cloud-cli-minikube`
    - `google-cloud-cli-nomos`
    - `google-cloud-cli-pubsub-emulator`
    - `google-cloud-cli-skaffold`
    - `google-cloud-cli-spanner-emulator`
    - `google-cloud-cli-terraform-validator`
    - `google-cloud-cli-tests`
    - `kubectl`
    
    For example, the `google-cloud-cli-app-engine-java` component can be installed as
          follows:
    
- `sudo apt-get install google-cloud-cli-app-engine-java`
- Run `[gcloud init](https://cloud.google.com/sdk/gcloud/reference/init)` to get started:

```
gcloud init
```

### AWS

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
