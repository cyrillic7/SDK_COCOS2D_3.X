.class final Lcom/baidu/platformsdk/LoginActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/LoginActivity;->c()V
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
        "Lcom/baidu/bdgame/sdk/obf/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/LoginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 7

    .prologue
    .line 115
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/r;->e()Z

    move-result v0

    if-nez v0, :cond_26

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_20

    .line 118
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    const/4 v1, 0x1

    new-instance v2, Lcom/baidu/platformsdk/LoginActivity$2$1;

    invoke-direct {v2, p0}, Lcom/baidu/platformsdk/LoginActivity$2$1;-><init>(Lcom/baidu/platformsdk/LoginActivity$2;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 137
    :goto_1f
    return-void

    .line 132
    :cond_20
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->c(Lcom/baidu/platformsdk/LoginActivity;)V

    goto :goto_1f

    .line 135
    :cond_26
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->d(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/kb;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/r;)V

    goto :goto_1f
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 110
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/r;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/platformsdk/LoginActivity$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/r;)V

    return-void
.end method
