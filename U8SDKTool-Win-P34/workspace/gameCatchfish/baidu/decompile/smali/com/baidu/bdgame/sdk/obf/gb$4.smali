.class final Lcom/baidu/bdgame/sdk/obf/gb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gb;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 137
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gb$4;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->b(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/it;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->O()V

    .line 143
    if-nez p1, :cond_15

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->c(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ga;->a(ILjava/lang/String;)V

    .line 161
    :goto_14
    return-void

    .line 146
    :cond_15
    const v0, 0x57ea5

    if-ne p1, v0, :cond_33

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fq;->a()V

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->b(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/it;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_verify_code_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14

    .line 153
    :cond_33
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->c(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ga;->a(ILjava/lang/String;)V

    goto :goto_14

    .line 157
    :cond_43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$4;->a:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->b(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/it;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_14
.end method
