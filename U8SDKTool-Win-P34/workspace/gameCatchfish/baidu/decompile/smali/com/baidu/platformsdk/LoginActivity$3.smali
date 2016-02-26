.class final Lcom/baidu/platformsdk/LoginActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/LoginActivity;->d()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/LoginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 155
    if-nez p1, :cond_20

    .line 156
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    iget-object v3, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-virtual {v3}, Lcom/baidu/platformsdk/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_passport_login"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platformsdk/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ce;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    :goto_1f
    return-void

    .line 158
    :cond_20
    const v0, 0xa474

    if-ne p1, v0, :cond_3a

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_3a

    .line 160
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/LoginActivity;->e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->a()V

    goto :goto_1f

    .line 162
    :cond_3a
    const v0, 0xa475

    if-ne p1, v0, :cond_54

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_54

    .line 164
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/LoginActivity;->e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->b()V

    goto :goto_1f

    .line 168
    :cond_54
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->c(Lcom/baidu/platformsdk/LoginActivity;)V

    goto :goto_1f
.end method
