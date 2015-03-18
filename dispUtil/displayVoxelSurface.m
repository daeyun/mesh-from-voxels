function displayVoxelSurface(voxels)

[X,Y,Z] = meshgrid(1:size(voxels, 1), 1:size(voxels, 2), 1:size(voxels, 3));

V = voxels;
ptch = patch( isosurface( X, Y, Z, V, 0.5 ) );
isonormals( X, Y, Z, V, ptch )
set(ptch, 'FaceColor', 'g', 'EdgeColor', 'none');

set(gca,'DataAspectRatio',[1 1 1]);
xlabel('X');
ylabel('Y');
zlabel('Z');
view(-140,20);
lighting('gouraud');

camlight('headlight');
axis('tight');
