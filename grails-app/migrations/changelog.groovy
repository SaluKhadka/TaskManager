databaseChangeLog = {

	changeSet(author: "salu (generated)", id: "1505219239436-1") {
		createTable(tableName: "assignee") {
			column(name: "id", type: "int4") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "assignee_pkey")
			}

			column(name: "version", type: "int8") {
				constraints(nullable: "false")
			}

			column(name: "email", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "project_id", type: "int4") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "salu (generated)", id: "1505219239436-2") {
		createTable(tableName: "assignee_task") {
			column(name: "assignee_tasks_id", type: "int4")

			column(name: "task_id", type: "int4")
		}
	}

	changeSet(author: "salu (generated)", id: "1505219239436-3") {
		createTable(tableName: "employee") {
			column(name: "id", type: "int4") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "employee_pkey")
			}

			column(name: "address", type: "VARCHAR(255)")

			column(name: "created", type: "TIMESTAMP WITH TIME ZONE")

			column(name: "name", type: "VARCHAR(255)")
		}
	}

	changeSet(author: "salu (generated)", id: "1505219239436-4") {
		createTable(tableName: "project") {
			column(name: "id", type: "int4") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "project_pkey")
			}

			column(name: "version", type: "int8") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "TIMESTAMP WITH TIME ZONE") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "VARCHAR(30)") {
				constraints(nullable: "false")
			}

			column(name: "time_spent", type: "int8") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "salu (generated)", id: "1505219239436-5") {
		createTable(tableName: "task") {
			column(name: "id", type: "int4") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "task_pkey")
			}

			column(name: "version", type: "int8") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "TIMESTAMP WITH TIME ZONE") {
				constraints(nullable: "false")
			}

			column(name: "details", type: "VARCHAR(1000)") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "TIMESTAMP WITH TIME ZONE") {
				constraints(nullable: "false")
			}

			column(name: "project_id", type: "int4") {
				constraints(nullable: "false")
			}

			column(name: "status", type: "VARCHAR(8)") {
				constraints(nullable: "false")
			}

			column(name: "title", type: "VARCHAR(100)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "salu (generated)", id: "1505219239436-6") {
		createTable(tableName: "users") {
			column(name: "id", type: "int8") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "users_pkey")
			}

			column(name: "version", type: "int8") {
				constraints(nullable: "false")
			}

			column(name: "login", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "password", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}

			column(name: "role", type: "VARCHAR(15)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "salu (generated)", id: "1505219239436-11") {
		createSequence(schemaName: "public", sequenceName: "hibernate_sequence")
	}

	changeSet(author: "salu (generated)", id: "1505219239436-7") {
		addForeignKeyConstraint(baseColumnNames: "project_id", baseTableName: "assignee", baseTableSchemaName: "public", constraintName: "fk_iatuobhq3pq5wwrt4m31f99km", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "project", referencedTableSchemaName: "public", referencesUniqueColumn: "false")
	}

	changeSet(author: "salu (generated)", id: "1505219239436-8") {
		addForeignKeyConstraint(baseColumnNames: "assignee_tasks_id", baseTableName: "assignee_task", baseTableSchemaName: "public", constraintName: "fk_bdxhr0xepk6ssx0cmg7xj0owp", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "assignee", referencedTableSchemaName: "public", referencesUniqueColumn: "false")
	}

	changeSet(author: "salu (generated)", id: "1505219239436-9") {
		addForeignKeyConstraint(baseColumnNames: "task_id", baseTableName: "assignee_task", baseTableSchemaName: "public", constraintName: "fk_tq7ip4jxwi210m9po7ulvtq0q", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "task", referencedTableSchemaName: "public", referencesUniqueColumn: "false")
	}

	changeSet(author: "salu (generated)", id: "1505219239436-10") {
		addForeignKeyConstraint(baseColumnNames: "project_id", baseTableName: "task", baseTableSchemaName: "public", constraintName: "fk_b7i81l1tk1ph95xnhtoftyv53", deferrable: "false", initiallyDeferred: "false", onDelete: "NO ACTION", onUpdate: "NO ACTION", referencedColumnNames: "id", referencedTableName: "project", referencedTableSchemaName: "public", referencesUniqueColumn: "false")
	}
}
