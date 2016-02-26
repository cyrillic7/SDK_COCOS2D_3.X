.class final Lcom/baidu/bdgame/sdk/obf/bv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bv;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bv;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bv;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bv$2;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bv$2;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->b(Lcom/baidu/bdgame/sdk/obf/bv;)V

    .line 93
    return-void
.end method
