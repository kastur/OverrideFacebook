.class Lcom/facebook/orca/threadview/ReceiptItemView$1;
.super Ljava/lang/Object;
.source "ReceiptItemView.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ReceiptItemView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ReceiptItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/threadview/ReceiptItemView$1;->a:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView$1;->a:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ReceiptItemView;->a(Lcom/facebook/orca/threadview/ReceiptItemView;)Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->a()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->b()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/threadview/ReceiptItemView$1;->a:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-static {v1}, Lcom/facebook/orca/threadview/ReceiptItemView;->b(Lcom/facebook/orca/threadview/ReceiptItemView;)Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;

    invoke-direct {v2, v0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->setData(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/threadview/ReceiptItemView$1;->a:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ReceiptItemView;->d(Lcom/facebook/orca/threadview/ReceiptItemView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ReceiptItemView$1;->a:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-static {v1}, Lcom/facebook/orca/threadview/ReceiptItemView;->c(Lcom/facebook/orca/threadview/ReceiptItemView;)Lcom/facebook/orca/threads/ThreadSourceUtil;

    const-string v1, "mobile"

    invoke-static {v1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
