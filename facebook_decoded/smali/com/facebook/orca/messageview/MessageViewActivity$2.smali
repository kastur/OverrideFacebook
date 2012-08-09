.class Lcom/facebook/orca/messageview/MessageViewActivity$2;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/messageview/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 245
    check-cast p1, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->b(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->a()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrableResult;->b()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(Lcom/facebook/orca/messageview/MessageViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
