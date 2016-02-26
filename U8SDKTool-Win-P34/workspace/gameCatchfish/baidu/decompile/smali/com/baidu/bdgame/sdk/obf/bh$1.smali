.class final Lcom/baidu/bdgame/sdk/obf/bh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bh;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bh;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bh;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bh$1;->a:Lcom/baidu/bdgame/sdk/obf/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bh$1;->a:Lcom/baidu/bdgame/sdk/obf/bh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a(Lcom/baidu/bdgame/sdk/obf/bh;)V

    .line 32
    return-void
.end method
