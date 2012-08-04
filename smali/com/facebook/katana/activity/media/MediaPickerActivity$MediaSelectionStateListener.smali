.class Lcom/facebook/katana/activity/media/MediaPickerActivity$MediaSelectionStateListener;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/MediaPickerActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity$MediaSelectionStateListener;->a:Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerActivity$MediaSelectionStateListener;-><init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;)V

    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity$MediaSelectionStateListener;->a:Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->a(Lcom/facebook/katana/activity/media/MediaPickerActivity;)V

    .line 285
    return-void
.end method
