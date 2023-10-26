-- 01)

delimiter //

create trigger after_insert_cliente after insert on Clientes for each row
begin
	insert into Auditoria(mensagem) values('Novo cliente adicionado!!')
end //

delimiter ;

-- 02)

delimiter //

create trigger before_delete_cliente before delete on Clientes for each row
begin
	insert into Auditoria(mensagem) values('tentaram excluir um cliente!!');
end //

delimiter ;

-- 03)

delimiter //

create trigger after_update_cliente after update on Clientes for each row
begin
	insert into Auditoria(mensagem) values(concat('mudaram um nome!! de ', old.nome,' para ', new.nome));
end //

delimiter ;

-- 04)

