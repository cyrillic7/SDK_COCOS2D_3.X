.class Lcom/baidu/frontia/module/deeplink/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    const/16 v2, 0x2710

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->a:I

    iput-object v1, p0, Lcom/baidu/frontia/module/deeplink/a/d;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/frontia/module/deeplink/a/d;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/frontia/module/deeplink/a/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->e:I

    iput v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->g:I

    iput v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->h:I

    iput-object v1, p0, Lcom/baidu/frontia/module/deeplink/a/d;->i:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/baidu/frontia/module/deeplink/a/d;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_68

    new-instance v0, Lcom/baidu/frontia/module/deeplink/a/d;

    invoke-direct {v0}, Lcom/baidu/frontia/module/deeplink/a/d;-><init>()V

    const-string v1, "app_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->a:I

    const-string v1, "service_path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->b:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->c:Ljava/lang/String;

    const-string v1, "domain"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->d:Ljava/lang/String;

    const-string v1, "update_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->e:I

    const-string v1, "web_visit_rule"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->g:I

    const-string v1, "client_visit_rule"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->h:I

    const-string v1, "default_uri"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->f:Ljava/lang/String;

    :cond_68
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/frontia/module/deeplink/a/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_a4

    new-instance v0, Lcom/baidu/frontia/module/deeplink/a/d;

    invoke-direct {v0}, Lcom/baidu/frontia/module/deeplink/a/d;-><init>()V

    const-string v1, "uri_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "uri_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/frontia/module/deeplink/a/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->i:Ljava/util/List;

    :cond_23
    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->a:I

    :cond_33
    const-string v1, "service_path"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "service_path"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->b:Ljava/lang/String;

    :cond_43
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->d:Ljava/lang/String;

    :cond_53
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->c:Ljava/lang/String;

    :cond_63
    const-string v1, "default_uri"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "default_uri"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->f:Ljava/lang/String;

    :cond_73
    const-string v1, "web_visit_rule"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "web_visit_rule"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->g:I

    :cond_83
    const-string v1, "client_visit_rule"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    const-string v1, "client_visit_rule"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->h:I

    :cond_93
    const-string v1, "update_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    const-string v1, "update_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/frontia/module/deeplink/a/d;->e:I

    :cond_a3
    :goto_a3
    return-object v0

    :cond_a4
    const/4 v0, 0x0

    goto :goto_a3
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/d;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_46

    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_23

    const/4 v1, 0x0

    :goto_f
    :try_start_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_43

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/frontia/module/deeplink/a/d;->a(Lorg/json/JSONObject;)Lcom/baidu/frontia/module/deeplink/a/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_20} :catch_44

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_23
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_27
    const-string v2, "DLServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    return-object v0

    :catch_44
    move-exception v1

    goto :goto_27

    :cond_46
    move-object v0, v1

    goto :goto_43
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/a/d;->i:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->e:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->g:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->h:I

    return v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/d;->i:Ljava/util/List;

    return-object v0
.end method

.method public h()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    iget v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "service_path"

    iget-object v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain"

    iget-object v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "web_visit_rule"

    iget v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "client_visit_rule"

    iget v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "update_time"

    iget v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "default_uri"

    iget-object v2, p0, Lcom/baidu/frontia/module/deeplink/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
