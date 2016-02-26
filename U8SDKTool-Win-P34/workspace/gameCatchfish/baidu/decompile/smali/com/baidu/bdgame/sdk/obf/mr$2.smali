.class final Lcom/baidu/bdgame/sdk/obf/mr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ms$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mr;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mr$2;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$2;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mr;->b(Lcom/baidu/bdgame/sdk/obf/mr;I)V

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$2;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$2;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;I)V

    .line 85
    return-void
.end method
