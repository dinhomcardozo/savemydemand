// app/javascript/custom/ticket_form.js

document.addEventListener("DOMContentLoaded", () => {
    const serviceSelect = document.getElementById("ticket_service_id");
    const providerSelect = document.getElementById("ticket_provider_id");
  
    if (serviceSelect && providerSelect) {
      serviceSelect.addEventListener("change", async () => {
        const serviceId = serviceSelect.value;
        if (serviceId) {
          try {
            const response = await fetch(`/services/${serviceId}/providers`);
            if (!response.ok) {
              throw new Error("Erro ao buscar prestadores.");
            }
            const providers = await response.json();
            providerSelect.innerHTML = ""; // Limpa as opções anteriores
  
            providers.forEach(provider => {
              const option = document.createElement("option");
              option.value = provider.id;
              option.textContent = provider.email;
              providerSelect.appendChild(option);
            });
          } catch (error) {
            console.error(error);
          }
        } else {
          providerSelect.innerHTML = ""; // Limpa as opções se nenhum serviço for selecionado
        }
      });
    }
});