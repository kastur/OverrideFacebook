.class Lcom/facebook/katana/activity/media/MediaPickerActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/MediaPickerActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity$ItemClickListener;->a:Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerActivity$ItemClickListener;-><init>(Lcom/facebook/katana/activity/media/MediaPickerActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/MediaItem;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerActivity$ItemClickListener;->a:Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/media/MediaPickerActivity;->a(Lcom/facebook/katana/activity/media/MediaPickerActivity;Lcom/facebook/katana/model/MediaItem;)V

    .line 227
    return-void
.end method
