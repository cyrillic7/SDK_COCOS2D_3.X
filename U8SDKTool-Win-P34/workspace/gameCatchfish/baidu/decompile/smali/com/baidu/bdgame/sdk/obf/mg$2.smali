.class final Lcom/baidu/bdgame/sdk/obf/mg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mg;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/mg;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mg;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 351
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mg$2;->b:Lcom/baidu/bdgame/sdk/obf/mg;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/mg$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg$2;->b:Lcom/baidu/bdgame/sdk/obf/mg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mg;->b(Lcom/baidu/bdgame/sdk/obf/mg;Ljava/lang/String;)V

    .line 356
    return-void
.end method
