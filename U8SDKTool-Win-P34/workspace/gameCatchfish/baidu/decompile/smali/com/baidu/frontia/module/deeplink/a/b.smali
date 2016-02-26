.class Lcom/baidu/frontia/module/deeplink/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/frontia/module/deeplink/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    const-string v0, "service_path=? AND package_name=?"

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_84

    const-string v4, "service_path=?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v2

    if-eqz p3, :cond_18

    invoke-direct {p0}, Lcom/baidu/frontia/module/deeplink/a/b;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    :cond_18
    const/4 v1, 0x1

    :try_start_19
    const-string v2, "ServiceInfo"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_42

    move-result-object v0

    :goto_25
    if-eqz v0, :cond_84

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2f
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-static {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->a(Landroid/database/Cursor;)Lcom/baidu/frontia/module/deeplink/a/d;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2f

    :catch_42
    move-exception v0

    const-string v1, "DLDBProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryServiceInfo E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_25

    :cond_5d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz p4, :cond_82

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/a/d;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, p4}, Lcom/baidu/frontia/module/deeplink/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/frontia/module/deeplink/a/d;->a(Ljava/util/List;)V

    goto :goto_66

    :cond_82
    move-object v0, v1

    :goto_83
    return-object v0

    :cond_84
    move-object v0, v10

    goto :goto_83
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v0}, Lcom/baidu/frontia/a/c/g;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_4a

    const/16 v1, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_4a

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4a

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_22} :catch_4c

    move-result-object v0

    :try_start_23
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/frontia/module/deeplink/a/d;->a(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2b} :catch_2d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_4c

    move-result-object v0

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    :try_start_2e
    const-string v1, "DLDBProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    goto :goto_2c

    :catch_4c
    move-exception v0

    const-string v1, "DLDBProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/frontia/module/deeplink/a/d;)V
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->h()Landroid/content/ContentValues;

    move-result-object v2

    :try_start_5
    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/baidu/frontia/module/deeplink/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/a/d;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->d()I

    move-result v3

    if-ge v0, v3, :cond_47

    const-string v0, "ServiceInfo"

    invoke-direct {p0}, Lcom/baidu/frontia/module/deeplink/a/b;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    :cond_47
    :goto_47
    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e6

    move v2, v1

    :goto_4e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/a/e;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/e;->g()Landroid/content/ContentValues;

    move-result-object v4

    const-string v1, "service_path"

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/baidu/frontia/module/deeplink/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e7

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/frontia/module/deeplink/a/e;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/e;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/e;->d()I

    move-result v5

    if-ge v1, v5, :cond_bc

    const-string v1, "URIInfo"

    invoke-direct {p0}, Lcom/baidu/frontia/module/deeplink/a/b;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/e;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    :cond_bc
    :goto_bc
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4e

    :cond_c0
    const-string v0, "ServiceInfo"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c6} :catch_c7

    goto :goto_47

    :catch_c7
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_e6

    const-string v1, "DLDBProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveServiceInfo E : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    return-void

    :cond_e7
    :try_start_e7
    const-string v0, "URIInfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ed} :catch_c7

    goto :goto_bc
.end method

.method private b()Ljava/lang/String;
    .registers 2

    const-string v0, "service_path=? AND package_name=? AND uri_path=?"

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/e;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    if-eqz p3, :cond_63

    if-eqz p4, :cond_63

    const/4 v1, 0x1

    :try_start_a
    const-string v2, "URIInfo"

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/baidu/frontia/module/deeplink/a/b;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v0, 0x1

    aput-object p3, v5, v0

    const/4 v0, 0x2

    aput-object p4, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_44

    move-result-object v0

    move-object v1, v0

    :goto_27
    if-eqz v1, :cond_63

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-static {v1}, Lcom/baidu/frontia/module/deeplink/a/e;->a(Landroid/database/Cursor;)Lcom/baidu/frontia/module/deeplink/a/e;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_31

    :catch_44
    move-exception v0

    const-string v1, "DLDBProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUriInfo E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    goto :goto_27

    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_62
    return-object v0

    :cond_63
    move-object v0, v10

    goto :goto_62
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    new-instance v1, Lcom/baidu/frontia/module/deeplink/a/a;

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/baidu/frontia/module/deeplink/a/a;-><init>(Landroid/content/Context;)V

    :try_start_f
    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/baidu/frontia/module/deeplink/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_17} :catch_1c
    .catchall {:try_start_f .. :try_end_17} :catchall_42

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/a;->close()V

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string v2, "DLDBProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_42

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/a;->close()V

    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :catchall_42
    move-exception v0

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/a;->close()V

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_44

    if-eqz p2, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/frontia/a/c/b;->a()Lcom/baidu/frontia/a/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/frontia/a/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deeplink/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/frontia/module/deeplink/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_43
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/baidu/frontia/module/deeplink/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_13

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/baidu/frontia/module/deeplink/a/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/frontia/module/deeplink/a/b;->a(Ljava/util/List;)V

    :cond_13
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_28

    new-instance v1, Lcom/baidu/frontia/module/deeplink/a/a;

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/baidu/frontia/module/deeplink/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/a/d;

    invoke-direct {p0, v2, v0}, Lcom/baidu/frontia/module/deeplink/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/frontia/module/deeplink/a/d;)V

    goto :goto_15

    :cond_25
    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/a;->close()V

    :cond_28
    return-void
.end method
