.class public Lcom/baidu/bdgame/sdk/obf/iv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/iv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/iv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    .line 202
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/iv$a;
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Landroid/view/View$OnClickListener;)V

    .line 221
    return-object p0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iv$a;
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;)V

    .line 206
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iv$a;
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Ljava/lang/String;)V

    .line 211
    return-object p0
.end method

.method public a()Lcom/baidu/bdgame/sdk/obf/iv;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    return-object v0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/iv$a;
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iv;->b(Landroid/view/View$OnClickListener;)V

    .line 226
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iv$a;
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv$a;->a:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iv;->b(Ljava/lang/String;)V

    .line 216
    return-object p0
.end method
