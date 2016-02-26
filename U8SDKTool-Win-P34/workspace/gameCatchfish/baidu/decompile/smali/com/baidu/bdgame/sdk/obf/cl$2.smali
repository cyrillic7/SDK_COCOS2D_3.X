.class final Lcom/baidu/bdgame/sdk/obf/cl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cl;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cl;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl$2;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$2;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Lcom/baidu/bdgame/sdk/obf/cl;I)I

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$2;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->b(Lcom/baidu/bdgame/sdk/obf/cl;)V

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$2;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Lcom/baidu/bdgame/sdk/obf/cl;I)I

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$2;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Lcom/baidu/bdgame/sdk/obf/cl;Ljava/lang/String;)V

    .line 86
    return-void
.end method
