.class final Lcom/baidu/sapi2/SapiCache$c;
.super Ljava/lang/Object;
.source "SapiCache.java"

# interfaces
.implements Lcom/baidu/sapi2/SapiCache$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/b$a$a;)V
    .registers 3
    .param p1, "m"    # Lcom/baidu/sapi2/b$a$a;

    .prologue
    .line 218
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Lcom/baidu/sapi2/b$a$a;)V

    .line 219
    return-void
.end method

.method public a(Lcom/baidu/sapi2/b$a$a;Ljava/lang/String;)V
    .registers 4
    .param p1, "m"    # Lcom/baidu/sapi2/b$a$a;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method
