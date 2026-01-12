terraform {
    source = "../../../../modules/vpc"
}

inputs = {
    env = "dev"
    filename = "dev-vpc.txt"
}