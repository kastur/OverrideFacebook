.class Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PhotoSetGridAdapter.java"


# instance fields
.field public a:J

.field public b:Z

.field public c:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->a:J

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$ViewHolder;-><init>()V

    return-void
.end method
