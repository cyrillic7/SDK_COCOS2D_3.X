.class Lcom/duoku/platform/view/a/h$3;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/h;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/h;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$3;->a:Lcom/duoku/platform/view/a/h;

    .line 121
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 136
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    .line 139
    return-object v0

    .line 136
    :array_8
    .array-data 2
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
        0x31s
        0x30s
    .end array-data
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x3

    return v0
.end method
