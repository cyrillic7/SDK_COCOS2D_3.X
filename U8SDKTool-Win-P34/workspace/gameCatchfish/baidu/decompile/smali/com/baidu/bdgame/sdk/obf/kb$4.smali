.class final Lcom/baidu/bdgame/sdk/obf/kb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/r;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kb$a;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/kb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kb;Lcom/baidu/bdgame/sdk/obf/kb$a;)V
    .registers 3

    .prologue
    .line 273
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kb$4;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kb$4;->a:Lcom/baidu/bdgame/sdk/obf/kb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$4;->a:Lcom/baidu/bdgame/sdk/obf/kb$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kb$a;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 278
    return-void
.end method
