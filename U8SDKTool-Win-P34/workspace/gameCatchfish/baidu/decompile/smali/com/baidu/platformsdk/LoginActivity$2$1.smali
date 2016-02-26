.class final Lcom/baidu/platformsdk/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/LoginActivity$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/r;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/LoginActivity$2;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/LoginActivity$2;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginActivity$2$1;->a:Lcom/baidu/platformsdk/LoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    .prologue
    .line 122
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 123
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$2$1;->a:Lcom/baidu/platformsdk/LoginActivity$2;

    iget-object v0, v0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->c(Lcom/baidu/platformsdk/LoginActivity;)V

    .line 128
    :goto_d
    return-void

    .line 126
    :cond_e
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$2$1;->a:Lcom/baidu/platformsdk/LoginActivity$2;

    iget-object v0, v0, Lcom/baidu/platformsdk/LoginActivity$2;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->d(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->g()V

    goto :goto_d
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 118
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/platformsdk/LoginActivity$2$1;->a(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
