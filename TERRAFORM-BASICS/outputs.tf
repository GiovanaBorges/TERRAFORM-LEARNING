output "file_name" {
  description = "Nome do arquivo criado"
  value       = local_file.exemplo.filename
}

output "file_content" {
  description = "Conteúdo do arquivo"
  value       = local_file.exemplo.content
}
