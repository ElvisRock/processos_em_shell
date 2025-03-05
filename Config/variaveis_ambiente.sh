# Add dentro do arquivo .profile

# Atualizar os repositórios de pacotes no sistema operacional e exibir algumas mensagens ao usuário.
# Automatizar a atualização do sistema com um certo formato visual e de mensagens, 
# sendo útil quando você quer rodar esse processo de forma simples e informativa.

# some more ls aliases
#alias ll='ls -alF'
alias ll='ls -l --color=auto'
alias la='ls -A'
alias l='ls -CF'

echo ""
#echo "*************************************************************************************************************************************"
echo "*** ATUALIZANDO AS BIBLIOTECÁS ***"
#echo "*************************************************************************************************************************************"
echo ""
echo "123" | sudo -S apt-get update
echo ""
#echo "*************************************************************************************************************************************"
echo ""