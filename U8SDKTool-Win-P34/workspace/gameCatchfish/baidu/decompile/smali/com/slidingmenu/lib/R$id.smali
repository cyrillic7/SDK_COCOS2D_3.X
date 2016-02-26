.class public final Lcom/slidingmenu/lib/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static fullscreen:I

.field public static left:I

.field public static margin:I

.field public static right:I

.field public static selected_view:I

.field public static slidingmenumain:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    const v0, 0x7f030003

    sput v0, Lcom/slidingmenu/lib/R$id;->fullscreen:I

    .line 126
    const/high16 v0, 0x7f030000

    sput v0, Lcom/slidingmenu/lib/R$id;->left:I

    .line 127
    const v0, 0x7f030002

    sput v0, Lcom/slidingmenu/lib/R$id;->margin:I

    .line 128
    const v0, 0x7f030001

    sput v0, Lcom/slidingmenu/lib/R$id;->right:I

    .line 129
    const v0, 0x7f030004

    sput v0, Lcom/slidingmenu/lib/R$id;->selected_view:I

    .line 130
    const v0, 0x7f030005

    sput v0, Lcom/slidingmenu/lib/R$id;->slidingmenumain:I

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
