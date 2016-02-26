.class Lcom/qbao/sdk/ui/RegisterView$7;
.super Lcom/qbao/core/a/c;
.source "RegisterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eI:Ljava/lang/String;

.field private final synthetic eJ:Ljava/lang/String;

.field final synthetic ff:Lcom/qbao/sdk/ui/RegisterView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$7;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/RegisterView$7;->eI:Ljava/lang/String;

    iput-object p3, p0, Lcom/qbao/sdk/ui/RegisterView$7;->eJ:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/qbao/core/a/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7;->ff:Lcom/qbao/sdk/ui/RegisterView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/RegisterView;->am()V

    .line 235
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 211
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$7;->eI:Ljava/lang/String;

    iget-object v2, p0, Lcom/qbao/sdk/ui/RegisterView$7;->eJ:Ljava/lang/String;

    new-instance v3, Lcom/qbao/sdk/ui/RegisterView$7$1;

    iget-object v4, p0, Lcom/qbao/sdk/ui/RegisterView$7;->eI:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/qbao/sdk/ui/RegisterView$7$1;-><init>(Lcom/qbao/sdk/ui/RegisterView$7;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qbao/sdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 230
    return-void
.end method
