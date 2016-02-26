.class final Lcom/baidu/bdgame/sdk/obf/mr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/mp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mr;->a()V
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
    .line 61
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mr$1;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$1;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;Z)V

    .line 66
    return-void
.end method
