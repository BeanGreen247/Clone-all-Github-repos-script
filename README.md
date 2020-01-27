# Clone all Github repos script
**NOTE: If you want to clone somebody else's repos they have to give you their RSA key.**

Install these packages
```
sudo apt install git curl xclip -y
```
Setup git for your account
```
git config user.name "username"
git config user.password "password"
```
Next generate ssh key
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Start the ssh-agent in the backgound
```
eval "$(ssh-agent -s)"
> Agent pid 59566
```
Add the generated ssh key to the ssh-agent
```
ssh-add ~/.ssh/id_rsa
```
Copy the generated ssh key to your clipboard using xclip
```
xclip -sel clip < ~/.ssh/id_rsa.pub
```
In the upper-right corner of any page, click your profile photo, then click Settings.

In the user settings sidebar, click SSH and GPG keys.

Click New SSH key or Add SSH key.

In the "Title" field, add "BeanGreen247's Github repo clone script"

Paste your key into the "Key" field.

Click Add SSH key.

If prompted, confirm your GitHub password.

Make script executable
```
chmod +x Github-Clone-All-Repo-Script.sh
```
## Script usage
The syntax
```
sh ./Github-Clone-All-Repo-Script.sh <username> <amount of repos to clone>
```
Example
```
sh ./Github-Clone-All-Repo-Script.sh BeanGreen247 1
```
This example will clone just 1 of my repos in alphabetical order.

This script makes a folder in the home directory called Github-$USER where $USER is the username.

That's it, enjoy cloning.
