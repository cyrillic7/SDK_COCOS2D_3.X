.class Lcom/duoku/platform/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/RelativeLayout;

.field final synthetic f:Lcom/duoku/platform/a/f;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/f;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/duoku/platform/a/f$a;->f:Lcom/duoku/platform/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/f;Lcom/duoku/platform/a/f$a;)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/f$a;-><init>(Lcom/duoku/platform/a/f;)V

    return-void
.end method
