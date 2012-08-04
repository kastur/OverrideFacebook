.class public Lcom/facebook/katana/view/FacebookPostView$Extras;
.super Ljava/lang/Object;
.source "FacebookPostView.java"


# instance fields
.field public final a:Lcom/facebook/katana/binding/ProfileImagesCache;

.field public final b:Lcom/facebook/katana/binding/StreamPhotosCache;

.field public final c:Landroid/view/View$OnClickListener;

.field public final d:Landroid/view/View$OnClickListener;

.field public final e:Landroid/graphics/Bitmap;

.field public final f:Landroid/graphics/Bitmap;

.field public final g:J


# direct methods
.method public constructor <init>(Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->a:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 79
    iput-object p2, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->b:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 80
    iput-object p3, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->c:Landroid/view/View$OnClickListener;

    .line 81
    iput-object p4, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->d:Landroid/view/View$OnClickListener;

    .line 82
    iput-object p5, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->e:Landroid/graphics/Bitmap;

    .line 83
    iput-object p6, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->f:Landroid/graphics/Bitmap;

    .line 84
    iput-wide p7, p0, Lcom/facebook/katana/view/FacebookPostView$Extras;->g:J

    .line 85
    return-void
.end method
