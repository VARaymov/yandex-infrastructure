variable "instance_platform_id" {
  description = "Идентификатор платформы ВМ"
  type        = string
  default     = "standard-v1"
}

variable "instance_subnet_id" {
  type        = string
  default = "e9b3j9sag8o74g739e6v"
}

variable "instance_name" {
  default = "chapter5-lesson2-std-019-002"
}

variable "instance_use_nat" {
  default = "true"
}

variable "instance_preemptible" {
  default = "true"
}

variable "instance_image_id" {
  description = "id image"
  type        = string
  default     = "fd80qm01ah03dkqb14lc"
}

variable "instance_memory" {
    description = "memory size in Gb"
    type = number
    default = 2  
}

variable "instance_disk_size" {
    description = "disk size in Gb"
    type = number
    default = 50
  
}

variable "instance_cores" {
    type = number
    default = 2
}

variable "instance_user_data" {
  description = "Cloud-config string"
  type  = string 
  default = "#cloud-config\nusers:\n  - name: student\n    gecos: Ansible User\n    groups: users,admin,sudo\n    sudo: ALL=(ALL) NOPASSWD:ALL\n    shell: /bin/bash\n    lock_passwd: true\n    ssh_authorized_keys:\n      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQChO63d9WcVkR2cgRBa/zJ0Dx+9OgDaET3a0IvB0PiXqQhgJ5JYD1yli/Ifi7Giwm5k4ej7tYPAWxtJPIoJlE5e0X7es1MRcSDfTRSO+zo0UiCKjoy3Q8POcCcTvj2WU/ooyIUHTG/JK/7SrcZmRn629Cuxpp9mTRbAp+AQhI6kB017FzvHtc/ZrSL14xe6riwuRjblSsDCWhMeflGIk7BFXgCCTWtUyvje/o6jG/XzqqKcDW44Q69qWqPZaXGe4BqWDCQ435nlYUlmMbjwVTmHuYJGZ7WJhhXMiPb0QA5SiW5xU1fzJau8AXdTggQWi/lueOQiGSDd6DKKACO0NlUq7nBIwm5zF5xCgWJ6I23KsYD0YvEJwekFRNp/wwc86+VHjEx2U/IslIVBQF8iPUD8Qtgob79Z+j49V9Ctuj07+c7/p+YZ7DL4rMv/0yPrCEZ7NCUcj12AEK0L7edJnQz1+2lmZEjMvuxTqeDOW9tUH3/vG/gTa/6v7hvZlz+d6QOk0WnXuPfvbRh1n6lHWKaLJO+N3l4xSYYbXtt3DExX7xuqwmcygHY3r/EW2KUgKfT/0/gmIuMfRPmvnLyPKazM5mMenJnZKrIdCbO3Fm1Sbxs87iSAiCIYvaXbEmvzE9IKQWIfM2wLnVfHWlxqjRXJYGJJ4PL3xHWVPtuKbLlwRQ== student@fhmmr6vsrjf00j6d13ne" 
}
