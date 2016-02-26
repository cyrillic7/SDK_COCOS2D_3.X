.class final Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a(Ljava/lang/String;)Z
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
.field final synthetic a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;

    iget-object v0, v0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->b(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    .line 168
    if-eqz p1, :cond_1f

    const v0, 0x90ef

    if-eq p1, v0, :cond_1f

    const v0, 0x90ec

    if-eq p1, v0, :cond_1f

    const v0, 0x90ed

    if-eq p1, v0, :cond_1f

    .line 172
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;

    iget-object v0, v0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    const-string v1, "set_result_intent_key_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    instance-of v1, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v1, :cond_34

    .line 177
    const-string v1, "set_result_intent_key_result_data"

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    :cond_34
    iget-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;

    iget-object v1, v1, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;

    iget-object v0, v0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->finish()V

    .line 181
    return-void
.end method
