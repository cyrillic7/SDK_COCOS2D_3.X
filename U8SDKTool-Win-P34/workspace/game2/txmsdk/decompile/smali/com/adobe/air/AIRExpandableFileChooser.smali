.class public Lcom/adobe/air/AIRExpandableFileChooser;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;,
        Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;,
        Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;
    }
.end annotation


# static fields
.field private static final FILEINFO:Ljava/lang/String; = "FILEINFO"

.field public static final TAG:Ljava/lang/String;

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final USER_ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field private static final USER_ACTION_DONE:Ljava/lang/String; = "done"


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAllowMultiple:Z

.field private mCheckedFiles:Landroid/util/SparseBooleanArray;

.field private mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

.field private mFileChooserStub:Lcom/adobe/air/FileChooserStub;

.field private final mFileProjection:[Ljava/lang/String;

.field private mFileSaveName:Landroid/widget/EditText;

.field private mFilenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMultipleFileSelectionView:Landroid/view/View;

.field private mRuntimeInflater:Landroid/view/LayoutInflater;

.field private mRuntimeResources:Landroid/content/res/Resources;

.field private mSave:Z

.field private mSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AIRExpandableFileChooser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/adobe/air/FileChooserStub;",
            ")V"
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mMultipleFileSelectionView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    iput-boolean v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "_display_name"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileProjection:[Ljava/lang/String;

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    iput-boolean p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    iput-boolean p3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    iput-object p5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    new-instance v0, Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/adobe/air/AndroidAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v0, Lcom/adobe/air/AIRExpandableFileChooser$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRExpandableFileChooser$1;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getRuntimeContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    const-string v0, "main"

    iget-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, v4, v5}, Lcom/adobe/air/utils/Utils;->GetLayoutViewFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v0, "list"

    invoke-static {v0, v5, v4}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v6, 0x1020004

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    const-string v1, "file_save_panel"

    invoke-static {v1, v5, v4}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-boolean v6, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    if-eqz v6, :cond_6

    const-string v6, "file_download"

    iget-object v7, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v6, v7}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "file_save_name"

    invoke-static {v1, v5, v4}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/air/utils/Utils;->GetExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$2;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$2;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string v1, "file_save_button"

    invoke-static {v1, v5, v4}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$3;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$3;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const-string v1, "audio_files"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image_files"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "video_files"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2, v3}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {v0, v8}, Landroid/widget/ExpandableListView;->setItemsCanFocus(Z)V

    const-string v0, "empty"

    invoke-static {v0, v5, v4}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_display_name LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    const-string v2, "file_upload"

    iget-object v6, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v2, v6}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_2
.end method

.method private AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileProjection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object v3, v4

    :goto_0
    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "TYPE"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    const-string v3, "_display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "FILEINFO"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    goto :goto_0
.end method

.method private HideVirtualKeyboard(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->expandableListPositionToFlatPosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AndroidAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/air/AIRExpandableFileChooser;->uncheckAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/air/AIRExpandableFileChooser;->HideVirtualKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private createInvisibleMultipleFileSelectionView()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "button_ok"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$4;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$4;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "button_cancel"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$5;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$5;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private expandableListPositionToFlatPosition(II)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_4

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    add-int v0, v2, p2

    goto :goto_0
.end method

.method private uncheckAll()V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v3, v1}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v6, "FILEINFO"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mParent:Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->uncheck()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method public GetDialog()Lcom/adobe/air/AndroidAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    return-object v0
.end method

.method public GetFileNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    instance-of v0, p2, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p2, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    const-string v2, "FILEINFO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    const-string v2, "FILEINFO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->dismiss()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->toggle()V

    goto :goto_1
.end method
