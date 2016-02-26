.class final Lcom/baidu/bdgame/sdk/obf/en$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/dm;JLjava/lang/String;Ljava/lang/String;)V
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
        "Lcom/baidu/bdgame/sdk/obf/il;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/en;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/en;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V
    .registers 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->O()V

    .line 94
    if-nez p1, :cond_26

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/en;->k:Lcom/baidu/bdgame/sdk/obf/il;

    .line 96
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/en;->k:Lcom/baidu/bdgame/sdk/obf/il;

    if-nez v0, :cond_1d

    const-string v0, ""

    :goto_19
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_1c
    return-void

    .line 96
    :cond_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/en;->k:Lcom/baidu/bdgame/sdk/obf/il;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/il;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 99
    :cond_26
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 100
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/en;->k:Lcom/baidu/bdgame/sdk/obf/il;

    if-nez v0, :cond_3a

    const-string v0, ""

    :goto_36
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/en;->b(Lcom/baidu/bdgame/sdk/obf/en;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_3a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/en;->k:Lcom/baidu/bdgame/sdk/obf/il;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/il;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 103
    :cond_43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en$2;->a:Lcom/baidu/bdgame/sdk/obf/en;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_1c
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 88
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/il;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/en$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V

    return-void
.end method
