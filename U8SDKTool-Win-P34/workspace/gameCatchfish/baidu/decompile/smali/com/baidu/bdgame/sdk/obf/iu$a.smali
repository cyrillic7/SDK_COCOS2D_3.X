.class public Lcom/baidu/bdgame/sdk/obf/iu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/iu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu$a;->a:Lcom/baidu/bdgame/sdk/obf/iu;

    .line 91
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/iu$a;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu$a;->a:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iu;->a(Landroid/view/View$OnClickListener;)V

    .line 105
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iu$a;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu$a;->a:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iu;->a(Ljava/lang/String;)V

    .line 95
    return-object p0
.end method

.method public a()Lcom/baidu/bdgame/sdk/obf/iu;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu$a;->a:Lcom/baidu/bdgame/sdk/obf/iu;

    return-object v0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/iu$a;
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu$a;->a:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iu;->b(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iu$a;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu$a;->a:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iu;->b(Ljava/lang/String;)V

    .line 100
    return-object p0
.end method
