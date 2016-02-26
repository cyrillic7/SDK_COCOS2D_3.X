.class Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 546
    new-instance v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c$1;

    invoke-direct {v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c$1;-><init>()V

    sput-object v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 536
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;->a:I

    .line 538
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;)V
    .registers 3

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 533
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 542
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    return-void
.end method
