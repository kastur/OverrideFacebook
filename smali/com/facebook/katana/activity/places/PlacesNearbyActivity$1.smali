.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PlacesNearbyActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Landroid/location/Location;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/GeoRegion;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 159
    const-string v0, "MDS_PENDING_REQUEST_ID"

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, p3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/util/List;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, p4}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/util/List;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, p5}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 168
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    .line 170
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;I)I

    .line 184
    :cond_3
    :goto_0
    return-void

    .line 171
    :cond_4
    if-nez p2, :cond_3

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->c(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    goto :goto_0

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    goto :goto_0
.end method

.method public final i(I)V
    .locals 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(ZZ)V

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 196
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const v1, 0x7f0b0422

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Z)Z

    .line 201
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const v1, 0x7f0b0428

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final j(I)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(ZZ)V

    .line 210
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const v1, 0x7f0b0422

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Z)Z

    .line 218
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const v1, 0x7f0b0428

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
