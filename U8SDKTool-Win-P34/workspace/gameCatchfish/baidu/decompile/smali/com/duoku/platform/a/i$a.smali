.class public Lcom/duoku/platform/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/duoku/platform/a/i;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/a/i;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/duoku/platform/a/i$a;->e:Lcom/duoku/platform/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
