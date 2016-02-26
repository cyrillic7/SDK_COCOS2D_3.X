.class public Lcom/tencent/msdk/db/PermissionModel;
.super Ljava/lang/Object;
.source "PermissionModel.java"

# interfaces
.implements Lcom/tencent/msdk/db/ITbl;


# static fields
.field public static final TBL_NAME:Ljava/lang/String; = "msdk_permission"

.field private static final col_permission:Ljava/lang/String; = "PERMISSIONSTR"

.field private static final col_qq_appid:Ljava/lang/String; = "QQ_APPID"

.field private static final col_wx_appid:Ljava/lang/String; = "WX_APPID"


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;

.field public permission:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public wxAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 26
    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    const-string v0, "CREATE TABLE IF NOT EXISTS msdk_permission ( QQ_APPID STRING UNIQUE NOT NULL, WX_APPID STRING, PERMISSIONSTR STRING)"

    .line 58
    .local v0, "createTblSql":Ljava/lang/String;
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    const-string v0, "DROP TABLE IF EXISTS msdk_permission"

    return-object v0
.end method

.method private getUsableContentValues()Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "QQ_APPID"

    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 134
    const-string v1, "WX_APPID"

    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1b
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 138
    const-string v1, "PERMISSIONSTR"

    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2a
    return-object v0
.end method


# virtual methods
.method public create()Z
    .registers 7

    .prologue
    .line 77
    iget-object v3, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v3

    .line 79
    :try_start_3
    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 80
    .local v1, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "msdk_permission"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/tencent/msdk/db/PermissionModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_16
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    .line 81
    const/4 v2, 0x1

    :try_start_14
    monitor-exit v3

    .line 86
    .end local v1    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_15
    return v2

    .line 82
    :catch_16
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Insert into qq_login_info error"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_15

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public delete()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v6, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 165
    :try_start_4
    const-string v4, " `QQ_APPID` = ? "

    .line 166
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    aput-object v7, v3, v5
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_41

    .line 168
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_e
    iget-object v5, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 169
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "msdk_permission"

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1c
    .catchall {:try_start_e .. :try_end_19} :catchall_41

    move-result v1

    .line 171
    .local v1, "howManyDeleted":I
    :try_start_1a
    monitor-exit v6

    .line 176
    .end local v1    # "howManyDeleted":I
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1b
    return v1

    .line 172
    :catch_1c
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PermissionModel delete error, selection:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    monitor-exit v6

    goto :goto_1b

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_1a .. :try_end_43} :catchall_41

    throw v5
.end method

.method public deleteAll()I
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public find()Lcom/tencent/msdk/db/BaseUserInfo;
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAll()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/db/BaseUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public firstTimeSave()Z
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->isExisted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 192
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->create()Z

    move-result v0

    .line 194
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getRecord()V
    .registers 12

    .prologue
    .line 29
    iget-object v10, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v10

    .line 31
    :try_start_3
    iget-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v0}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "msdk_permission"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 33
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_42

    .line 34
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 35
    const-string v0, "QQ_APPID"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 37
    const-string v0, "WX_APPID"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 39
    const-string v0, "PERMISSIONSTR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 42
    :cond_42
    if-eqz v8, :cond_47

    .line 43
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_49
    .catchall {:try_start_3 .. :try_end_47} :catchall_58

    .line 50
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_47
    :goto_47
    :try_start_47
    monitor-exit v10

    .line 51
    return-void

    .line 45
    :catch_49
    move-exception v9

    .line 46
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "PermissionModel getRecord Exception."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v0}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 48
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 50
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v0

    monitor-exit v10
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "msdk_permission"

    return-object v0
.end method

.method public isExisted()Z
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 99
    iget-object v13, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "columns":[Ljava/lang/String;
    :try_start_6
    const-string v3, " QQ_APPID = ? "

    .line 103
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    aput-object v14, v4, v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_58

    .line 104
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 105
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 107
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 110
    .local v8, "limit":Ljava/lang/String;
    :try_start_14
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "msdk_permission"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 113
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_32
    .catchall {:try_start_14 .. :try_end_29} :catchall_58

    .line 115
    :try_start_29
    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_58

    move v1, v11

    .line 124
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_2b
    return v1

    .line 117
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2c
    :try_start_2c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_32
    .catchall {:try_start_2c .. :try_end_2f} :catchall_58

    .line 118
    :try_start_2f
    monitor-exit v13

    move v1, v12

    goto :goto_2b

    .line 120
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_32
    move-exception v10

    .line 121
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isExisted error, selection:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    monitor-exit v13

    move v1, v11

    goto :goto_2b

    .line 126
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "groupBy":Ljava/lang/String;
    .end local v6    # "having":Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "limit":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v1

    monitor-exit v13
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public save()Z
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->isExisted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 184
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->update()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    .line 186
    :goto_d
    return v0

    .line 184
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 186
    :cond_10
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->create()Z

    move-result v0

    goto :goto_d
.end method

.method public update()I
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v6, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 147
    :try_start_4
    invoke-direct {p0}, Lcom/tencent/msdk/db/PermissionModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 148
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, " `QQ_APPID` = ? "

    .line 149
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    aput-object v8, v3, v7
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_42

    .line 151
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_12
    iget-object v7, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 152
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "msdk_permission"

    invoke-virtual {v2, v7, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_20
    .catchall {:try_start_12 .. :try_end_1d} :catchall_42

    move-result v5

    :try_start_1e
    monitor-exit v6

    .line 156
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1f
    return v5

    .line 153
    :catch_20
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PermissionModel update error, selection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 155
    iget-object v7, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 156
    monitor-exit v6

    goto :goto_1f

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_42
    move-exception v5

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_42

    throw v5
.end method
