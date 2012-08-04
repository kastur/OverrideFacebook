.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;
.super Ljava/lang/Object;
.source "PhotoGalleryActivity.java"


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Ljava/util/Set;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput p2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;->b:I

    .line 1344
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$FeedbackData;->a:Ljava/util/Set;

    .line 1345
    return-void
.end method
