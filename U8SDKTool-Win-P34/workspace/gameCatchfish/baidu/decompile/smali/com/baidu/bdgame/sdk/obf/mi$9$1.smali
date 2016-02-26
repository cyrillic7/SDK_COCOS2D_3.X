.class final Lcom/baidu/bdgame/sdk/obf/mi$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mi$9;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mi$9;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mi$9;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mi$9$1;->a:Lcom/baidu/bdgame/sdk/obf/mi$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 168
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/mi$9$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$9$1;->a:Lcom/baidu/bdgame/sdk/obf/mi$9;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mi;->a(Lcom/baidu/bdgame/sdk/obf/mi;ILjava/lang/String;)V

    .line 173
    return-void
.end method
