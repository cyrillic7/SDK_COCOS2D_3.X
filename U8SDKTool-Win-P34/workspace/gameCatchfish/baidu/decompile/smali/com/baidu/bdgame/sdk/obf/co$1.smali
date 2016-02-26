.class final Lcom/baidu/bdgame/sdk/obf/co$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ct$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/co;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/co;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/co;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/co;->a(Lcom/baidu/bdgame/sdk/obf/co;)Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->i()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/co;->a(Lcom/baidu/bdgame/sdk/obf/co;Z)V

    .line 123
    :goto_12
    return-void

    .line 114
    :cond_13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/co;->a(Lcom/baidu/bdgame/sdk/obf/co;)Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Lcom/baidu/bdgame/sdk/obf/ic;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/co;->b(Lcom/baidu/bdgame/sdk/obf/co;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/co;->a(Lcom/baidu/bdgame/sdk/obf/co;)Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->s()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->j()V

    .line 122
    :goto_39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/co;->a(Lcom/baidu/bdgame/sdk/obf/co;Z)V

    goto :goto_12

    .line 119
    :cond_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co$1;->a:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->h()V

    goto :goto_39
.end method
