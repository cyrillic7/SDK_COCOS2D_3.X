.class final Lcom/baidu/bdgame/sdk/obf/ch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ch;->b(I)V
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
        "Lcom/baidu/bdgame/sdk/obf/ha;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ch;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ch;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ch$1;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ha;)V
    .registers 5

    .prologue
    .line 132
    if-nez p1, :cond_8

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$1;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Lcom/baidu/bdgame/sdk/obf/ch;Ljava/lang/Object;)V

    .line 138
    :goto_7
    return-void

    .line 135
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$1;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$1;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->b(Lcom/baidu/bdgame/sdk/obf/ch;)V

    goto :goto_7
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 127
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ch$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ha;)V

    return-void
.end method
