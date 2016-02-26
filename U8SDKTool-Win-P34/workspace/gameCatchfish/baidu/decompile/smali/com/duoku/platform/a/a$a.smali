.class Lcom/duoku/platform/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/TextView;

.field final synthetic g:Lcom/duoku/platform/a/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/a;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/duoku/platform/a/a$a;->g:Lcom/duoku/platform/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/a;Lcom/duoku/platform/a/a$a;)V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/a$a;-><init>(Lcom/duoku/platform/a/a;)V

    return-void
.end method
