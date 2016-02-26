.class final Lcom/baidu/bdgame/sdk/obf/bn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bn;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/bn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bn;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->c:Lcom/baidu/bdgame/sdk/obf/bn;

    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->a:I

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->c:Lcom/baidu/bdgame/sdk/obf/bn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->c:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bn;->a(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->a:I

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/bn$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bn;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 71
    :goto_f
    return-void

    .line 68
    :catch_10
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
