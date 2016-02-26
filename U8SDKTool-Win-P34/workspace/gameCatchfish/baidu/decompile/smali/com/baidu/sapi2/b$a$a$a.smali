.class public Lcom/baidu/sapi2/b$a$a$a;
.super Ljava/lang/Object;
.source "SapiOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/b$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    .line 200
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b$a$a$a;
    .registers 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    new-instance v0, Lcom/baidu/sapi2/b$a$a$a;

    invoke-direct {v0}, Lcom/baidu/sapi2/b$a$a$a;-><init>()V

    .line 219
    .local v0, "ref":Lcom/baidu/sapi2/b$a$a$a;
    if-eqz p0, :cond_1f

    .line 220
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/b$a$a$a;->a:Ljava/lang/String;

    .line 221
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    .line 222
    const-string v1, "hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/b$a$a$a;->c:Ljava/lang/String;

    .line 224
    :cond_1f
    return-object v0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 204
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "download_url"

    iget-object v3, p0, Lcom/baidu/sapi2/b$a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v2, "version"

    iget-wide v4, p0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 208
    const-string v2, "hash"

    iget-object v3, p0, Lcom/baidu/sapi2/b$a$a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 211
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_1a
    return-object v1

    .line 210
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_1b
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_1a
.end method
