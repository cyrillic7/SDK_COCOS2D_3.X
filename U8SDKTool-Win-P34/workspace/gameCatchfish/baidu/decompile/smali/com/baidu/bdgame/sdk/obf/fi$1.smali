.class final Lcom/baidu/bdgame/sdk/obf/fi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fi;->m()V
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
        "Lcom/baidu/bdgame/sdk/obf/fk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fi;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/fk;)V
    .registers 9

    .prologue
    const/4 v4, 0x2

    .line 100
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOrder .. onCallback resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 102
    if-nez p1, :cond_91

    if-eqz p3, :cond_91

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/baidu/bdgame/sdk/obf/fk;)Lcom/baidu/bdgame/sdk/obf/fk;

    .line 104
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/fk;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/fi;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/tencent/mobileqq/openpay/api/IOpenApi;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->b(Lcom/baidu/bdgame/sdk/obf/fi;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->i()V

    .line 120
    :goto_57
    return-void

    .line 109
    :cond_58
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_paychannel_error_qq"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;

    move-result-object v0

    if-nez v0, :cond_86

    const-string v0, ""

    :goto_82
    invoke-static {v1, v4, v2, v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    .line 114
    :cond_91
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 115
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;

    move-result-object v0

    if-nez v0, :cond_a7

    const-string v0, ""

    :goto_a3
    invoke-static {v1, v4, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fi;->b(Lcom/baidu/bdgame/sdk/obf/fi;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_a7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 117
    :cond_b2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi$1;->a:Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_57
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 96
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fi$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/fk;)V

    return-void
.end method
