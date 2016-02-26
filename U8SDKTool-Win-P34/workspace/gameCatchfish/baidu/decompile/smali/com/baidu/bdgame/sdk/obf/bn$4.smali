.class final Lcom/baidu/bdgame/sdk/obf/bn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bn;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bn;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bn$4;->a:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bn;->a(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bn;->c(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 85
    :goto_b
    return-void

    .line 82
    :catch_c
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
