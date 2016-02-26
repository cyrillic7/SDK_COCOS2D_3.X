.class final Lcom/baidu/bdgame/sdk/obf/cl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cl;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cl;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl$4;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 167
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cl$4;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$4;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->d(Lcom/baidu/bdgame/sdk/obf/cl;)Lcom/baidu/bdgame/sdk/obf/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->O()V

    .line 173
    if-nez p1, :cond_11

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$4;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->b(Lcom/baidu/bdgame/sdk/obf/cl;)V

    .line 182
    :goto_10
    return-void

    .line 176
    :cond_11
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$4;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->e(Lcom/baidu/bdgame/sdk/obf/cl;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_10

    .line 179
    :cond_21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$4;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->e(Lcom/baidu/bdgame/sdk/obf/cl;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10
.end method
