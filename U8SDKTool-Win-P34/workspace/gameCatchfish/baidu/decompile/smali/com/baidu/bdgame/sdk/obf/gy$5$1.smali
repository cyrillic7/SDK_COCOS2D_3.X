.class final Lcom/baidu/bdgame/sdk/obf/gy$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gy$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/gy$5;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gy$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 242
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gy$5$1;->b:Lcom/baidu/bdgame/sdk/obf/gy$5;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gy$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 242
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gy$5$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5$1;->b:Lcom/baidu/bdgame/sdk/obf/gy$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gy$5$1;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/gy;->a(Lcom/baidu/bdgame/sdk/obf/gy;ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method
