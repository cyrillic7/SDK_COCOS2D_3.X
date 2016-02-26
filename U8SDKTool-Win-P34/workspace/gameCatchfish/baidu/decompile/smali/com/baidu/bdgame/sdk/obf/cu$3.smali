.class final Lcom/baidu/bdgame/sdk/obf/cu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cu;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/cu;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cu;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cu$3;->b:Lcom/baidu/bdgame/sdk/obf/cu;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cu$3;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 213
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu$3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$3;->a:Lcom/baidu/bdgame/sdk/obf/n;

    if-nez v0, :cond_7

    .line 231
    :goto_6
    return-void

    .line 220
    :cond_7
    if-eqz p1, :cond_f

    .line 221
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$3;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-interface {v0, p1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 225
    :cond_f
    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$3;->a:Lcom/baidu/bdgame/sdk/obf/n;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v2, v1}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 229
    :cond_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$3;->a:Lcom/baidu/bdgame/sdk/obf/n;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v2, v1}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_6
.end method
