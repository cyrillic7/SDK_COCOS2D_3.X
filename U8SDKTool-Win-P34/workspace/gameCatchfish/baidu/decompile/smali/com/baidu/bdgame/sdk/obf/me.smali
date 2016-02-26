.class public Lcom/baidu/bdgame/sdk/obf/me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/me$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Z

.field private c:Lcom/baidu/bdgame/sdk/obf/me$a;

.field private d:Lcom/baidu/bdgame/sdk/obf/mb;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/mb;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Z

    .line 27
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Lcom/baidu/bdgame/sdk/obf/mb;

    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Z

    .line 45
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Lcom/baidu/bdgame/sdk/obf/me$a;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Z

    if-nez v0, :cond_14

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Lcom/baidu/bdgame/sdk/obf/me$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Lcom/baidu/bdgame/sdk/obf/me$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/me$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/me$a;->sendMessage(Landroid/os/Message;)Z

    .line 51
    :cond_14
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/me$a;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Lcom/baidu/bdgame/sdk/obf/me$a;

    .line 41
    return-void
.end method

.method public b()Lcom/baidu/bdgame/sdk/obf/mb;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Lcom/baidu/bdgame/sdk/obf/mb;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Lcom/baidu/bdgame/sdk/obf/mb;

    if-eqz v0, :cond_12

    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Lcom/baidu/bdgame/sdk/obf/mb;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mb;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/me;->a(Landroid/graphics/Bitmap;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/content/Context;

    .line 37
    :cond_12
    return-void
.end method
