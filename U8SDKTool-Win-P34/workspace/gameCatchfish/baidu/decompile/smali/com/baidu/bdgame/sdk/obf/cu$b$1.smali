.class final Lcom/baidu/bdgame/sdk/obf/cu$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cu$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/jr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cu$b;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cu$b;)V
    .registers 2

    .prologue
    .line 384
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/jr;)V
    .registers 7

    .prologue
    .line 388
    if-nez p1, :cond_3c

    if-eqz p3, :cond_3c

    .line 389
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->a(Lcom/baidu/bdgame/sdk/obf/cu$b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/jr;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 390
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cu$b;->a:Lcom/baidu/bdgame/sdk/obf/cu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/cu$b;->a(Lcom/baidu/bdgame/sdk/obf/cu$b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/cu$b;->b(Lcom/baidu/bdgame/sdk/obf/cu$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    :cond_27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->c(Lcom/baidu/bdgame/sdk/obf/cu$b;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 393
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->c(Lcom/baidu/bdgame/sdk/obf/cu$b;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {v0, v1, v2, p3}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 400
    :cond_3b
    :goto_3b
    return-void

    .line 397
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->c(Lcom/baidu/bdgame/sdk/obf/cu$b;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 398
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a:Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->c(Lcom/baidu/bdgame/sdk/obf/cu$b;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3b
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 384
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/jr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu$b$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/jr;)V

    return-void
.end method
