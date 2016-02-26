.class final Lcom/baidu/bdgame/sdk/obf/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/p;->b(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/baidu/bdgame/sdk/obf/p;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/p;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->d:Lcom/baidu/bdgame/sdk/obf/p;

    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->a:I

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->d:Lcom/baidu/bdgame/sdk/obf/p;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/p;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->a:I

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/p$1;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 50
    :goto_f
    return-void

    .line 47
    :catch_10
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
